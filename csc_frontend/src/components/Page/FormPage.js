import React, { useState } from "react";
import axios from "axios";
import { makeStyles } from "@material-ui/core/styles";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import IconButton from "@material-ui/core/IconButton";
import MenuIcon from "@material-ui/icons/Menu";
import AccountCircle from "@material-ui/icons/AccountCircle";
import Alert from "@material-ui/lab/Alert";
import {
  TextField,
  Grid,
  Checkbox,
  FormControlLabel,
  Button,
  FormControl,
  RadioGroup,
  Radio,
  FormLabel,
  Typography,
} from "@material-ui/core";
import Box from "@material-ui/core/Box";
import MenuItem from "@material-ui/core/MenuItem";
import Menu from "@material-ui/core/Menu";

const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1,
  },
  menuButton: {
    marginRight: theme.spacing(2),
  },
  title: {
    flexGrow: 1,
  },
}));

function FormPage() {
  const classes = useStyles();
  const [auth, setAuth] = useState(true);
  const [anchorEl, setAnchorEl] = useState(null);
  const [email, setEmail] = useState("");
  const [name, setName] = useState("");
  const [phone_number, setPhoneNumber] = useState("");
  const [errorForms, setErrorForms] = useState("");
  const [order_number, setOrderNumber] = useState("");
  const [gender, setGender] = useState("female");
  const [issue_description, setIssue] = useState("");
  const [accept_terms, setAcceptTerms] = useState(false);
  const [date, setDate] = useState("");

  const handleSendMessage = (e) => {
    e.preventDefault();
    let data = {
      name: name,
      email: email,
      phone_number: phone_number,
      order_number: order_number == "" ? 0 : order_number,
      gender: gender,
      date: new Date(date).toISOString(),
      issue_description: issue_description,
      accept_terms: true,
    };
    axios({
      method: "post",
      url: "http://localhost:1337/call-back-forms",
      data: data,
      headers: { "Content-Type": "application/json" },
    })
      .then(function (response) {
        //handle success
        console.log(response);
      })
      .catch(function (err) {
        //handle error
        switch (err.response.data.statusCode) {
          case 400:
            console.log(err.response.data.data.errors);
            setErrorForms(err.response.data.errors);
            break;
          default:
            break;
        }
      });
  };
  const open = Boolean(anchorEl);
  const handleMenu = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  return (
    <div>
      <AppBar position="static">
        <Toolbar>
          <IconButton
            edge="start"
            className={classes.menuButton}
            color="inherit"
            aria-label="menu"
          >
            <MenuIcon />
          </IconButton>
          <Typography variant="h6" className={classes.title}>
            Customer Service Center
          </Typography>
          {auth && (
            <div>
              <IconButton
                aria-label="account of current user"
                aria-controls="menu-appbar"
                aria-haspopup="true"
                onClick={handleMenu}
                color="inherit"
              >
                <AccountCircle />
              </IconButton>
              <Menu
                id="menu-appbar"
                anchorEl={anchorEl}
                anchorOrigin={{
                  vertical: "top",
                  horizontal: "right",
                }}
                keepMounted
                transformOrigin={{
                  vertical: "top",
                  horizontal: "right",
                }}
                open={open}
                onClose={handleClose}
              >
                <MenuItem onClick={handleClose}>Profile</MenuItem>
                <MenuItem onClick={handleClose}>My account</MenuItem>
              </Menu>
            </div>
          )}
        </Toolbar>
      </AppBar>
      <Grid
        container
        spacing={0}
        direction="column"
        alignItems="center"
        justify="center"
        style={{ minHeight: "100vh" }}
      >
        <Typography variant="h6">Callback Form</Typography>
        <Box
          display="flex"
          justifyContent="center"
          alignItems="center"
          minHeight="100vh"
          width="70%"
        >
          <form onSubmit={handleSendMessage}>
            <Grid container spacing={3}>
              <Grid item xs={12} sm={6}>
                <TextField
                  required
                  id="name"
                  name="Name"
                  label="Name"
                  fullWidth
                  autoComplete="given-name"
                  onChange={(e) => setName(e.target.value)}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  required
                  type="email"
                  id="email"
                  name="email"
                  label="Email"
                  fullWidth
                  autoComplete="email"
                  onChange={(e) => setEmail(e.target.value)}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  required
                  type="number"
                  id="phone_number"
                  name="phone_number"
                  label="Phone Number"
                  fullWidth
                  autoComplete="phone-number"
                  onChange={(e) => setPhoneNumber(e.target.value)}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  id="order_number"
                  name="order_number"
                  label="Order number"
                  fullWidth
                  autoComplete="order-number"
                  onChange={(e) => setOrderNumber(e.target.value)}
                />
              </Grid>
              <Grid item xs={12}>
                <FormControl component="fieldset" required>
                  <FormLabel component="legend">Gender</FormLabel>
                  <RadioGroup
                    aria-label="gender"
                    name="gender1"
                    value={gender}
                    onChange={(e) => setGender(e.target.value)}
                  >
                    <FormControlLabel
                      value="female"
                      control={<Radio />}
                      label="Female"
                    />
                    <FormControlLabel
                      value="male"
                      control={<Radio />}
                      label="Male"
                    />
                    <FormControlLabel
                      value="other"
                      control={<Radio />}
                      label="Other"
                    />
                  </RadioGroup>
                </FormControl>
              </Grid>

              <Grid item xs={12} sm={8}>
                <TextField
                  id="issue_description"
                  label="Issue Description"
                  multiline
                  rows={4}
                  defaultValue="Some examle issue decription"
                  variant="outlined"
                  onChange={(e) => setIssue(e.target.value)}
                  fullWidth
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  required
                  id="date"
                  label="Date and Time for a callback"
                  type="datetime-local"
                  onChange={(e) => setDate(e.target.value)}
                  className={classes.textField}
                  InputLabelProps={{
                    shrink: true,
                  }}
                />
              </Grid>
              <Grid item xs={12}>
                <FormControlLabel
                  control={
                    <Checkbox inputProps={{ "aria-label": "Accept terms" }} />
                  }
                  label="Accept the terms"
                />
              </Grid>
              <Grid item xs={12}>
                <FormControlLabel
                  control={
                    <Button variant="contained" color="primary" type="submit">
                      Send Message
                    </Button>
                  }
                />
              </Grid>
            </Grid>
          </form>
        </Box>
      </Grid>
    </div>
  );
}

export default FormPage;
